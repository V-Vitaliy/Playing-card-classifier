┬«
█ф
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
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
Џ
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
$
DisableCopyOnRead
resourceѕ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
ѓ
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8чн
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
ў
 Adagrad/accumulator/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*1
shared_name" Adagrad/accumulator/dense_1/bias
Љ
4Adagrad/accumulator/dense_1/bias/Read/ReadVariableOpReadVariableOp Adagrad/accumulator/dense_1/bias*
_output_shapes
:5*
dtype0
а
"Adagrad/accumulator/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:25*3
shared_name$"Adagrad/accumulator/dense_1/kernel
Ў
6Adagrad/accumulator/dense_1/kernel/Read/ReadVariableOpReadVariableOp"Adagrad/accumulator/dense_1/kernel*
_output_shapes

:25*
dtype0
ћ
Adagrad/accumulator/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*/
shared_name Adagrad/accumulator/dense/bias
Ї
2Adagrad/accumulator/dense/bias/Read/ReadVariableOpReadVariableOpAdagrad/accumulator/dense/bias*
_output_shapes
:2*
dtype0
Ю
 Adagrad/accumulator/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	аZ2*1
shared_name" Adagrad/accumulator/dense/kernel
ќ
4Adagrad/accumulator/dense/kernel/Read/ReadVariableOpReadVariableOp Adagrad/accumulator/dense/kernel*
_output_shapes
:	аZ2*
dtype0
џ
!Adagrad/accumulator/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adagrad/accumulator/conv2d_2/bias
Њ
5Adagrad/accumulator/conv2d_2/bias/Read/ReadVariableOpReadVariableOp!Adagrad/accumulator/conv2d_2/bias*
_output_shapes
: *
dtype0
ф
#Adagrad/accumulator/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *4
shared_name%#Adagrad/accumulator/conv2d_2/kernel
Б
7Adagrad/accumulator/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp#Adagrad/accumulator/conv2d_2/kernel*&
_output_shapes
:@ *
dtype0
џ
!Adagrad/accumulator/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adagrad/accumulator/conv2d_1/bias
Њ
5Adagrad/accumulator/conv2d_1/bias/Read/ReadVariableOpReadVariableOp!Adagrad/accumulator/conv2d_1/bias*
_output_shapes
:@*
dtype0
ф
#Adagrad/accumulator/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*4
shared_name%#Adagrad/accumulator/conv2d_1/kernel
Б
7Adagrad/accumulator/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp#Adagrad/accumulator/conv2d_1/kernel*&
_output_shapes
:@@*
dtype0
ќ
Adagrad/accumulator/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adagrad/accumulator/conv2d/bias
Ј
3Adagrad/accumulator/conv2d/bias/Read/ReadVariableOpReadVariableOpAdagrad/accumulator/conv2d/bias*
_output_shapes
:@*
dtype0
д
!Adagrad/accumulator/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adagrad/accumulator/conv2d/kernel
Ъ
5Adagrad/accumulator/conv2d/kernel/Read/ReadVariableOpReadVariableOp!Adagrad/accumulator/conv2d/kernel*&
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:5*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:25*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:25*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	аZ2*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	аZ2*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0
ѓ
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
ѓ
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
Њ
serving_default_conv2d_inputPlaceholder*1
_output_shapes
:         ђђ*
dtype0*&
shape:         ђђ
я
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_44646

NoOpNoOp
▀G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*џG
valueљGBЇG BєG
Х
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
╚
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
ј
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
╚
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
ј
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
д
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias*
Х
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M
activation

Nkernel
Obias*
J
0
1
'2
(3
64
75
E6
F7
N8
O9*
J
0
1
'2
(3
64
75
E6
F7
N8
O9*
* 
░
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Utrace_0
Vtrace_1* 

Wtrace_0
Xtrace_1* 
* 
s
Y
_variables
Z_iterations
[_learning_rate
\_index_dict
]_accumulators
^_update_step_xla*

_serving_default* 

0
1*

0
1*
* 
Њ
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

etrace_0* 

ftrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

ltrace_0* 

mtrace_0* 

'0
(1*

'0
(1*
* 
Њ
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 

60
71*

60
71*
* 
ћ
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
ђlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

Ђtrace_0* 

ѓtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Ѓnon_trainable_variables
ёlayers
Ёmetrics
 єlayer_regularization_losses
Єlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

ѕtrace_0* 

Ѕtrace_0* 

E0
F1*

E0
F1*
* 
ў
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

Јtrace_0* 

љtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

N0
O1*
* 
ў
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

ќtrace_0* 

Ќtrace_0* 
ћ
ў	variables
Ўtrainable_variables
џregularization_losses
Џ	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

ъ0
Ъ1*
* 
* 
* 
* 
* 
* 
\
Z0
а1
А2
б3
Б4
ц5
Ц6
д7
Д8
е9
Е10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
а0
А1
б2
Б3
ц4
Ц5
д6
Д7
е8
Е9*
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
* 
* 
* 
	
M0* 
* 
* 
* 
* 
* 
* 
* 
* 
ю
фnon_trainable_variables
Фlayers
гmetrics
 Гlayer_regularization_losses
«layer_metrics
ў	variables
Ўtrainable_variables
џregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses* 
* 
* 
<
»	variables
░	keras_api

▒total

▓count*
M
│	variables
┤	keras_api

хtotal

Хcount
и
_fn_kwargs*
lf
VARIABLE_VALUE!Adagrad/accumulator/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdagrad/accumulator/conv2d/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adagrad/accumulator/conv2d_1/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adagrad/accumulator/conv2d_1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adagrad/accumulator/conv2d_2/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adagrad/accumulator/conv2d_2/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adagrad/accumulator/dense/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdagrad/accumulator/dense/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adagrad/accumulator/dense_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adagrad/accumulator/dense_1/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

▒0
▓1*

»	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

х0
Х1*

│	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
я
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rate!Adagrad/accumulator/conv2d/kernelAdagrad/accumulator/conv2d/bias#Adagrad/accumulator/conv2d_1/kernel!Adagrad/accumulator/conv2d_1/bias#Adagrad/accumulator/conv2d_2/kernel!Adagrad/accumulator/conv2d_2/bias Adagrad/accumulator/dense/kernelAdagrad/accumulator/dense/bias"Adagrad/accumulator/dense_1/kernel Adagrad/accumulator/dense_1/biastotal_1count_1totalcountConst*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_44955
┘
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rate!Adagrad/accumulator/conv2d/kernelAdagrad/accumulator/conv2d/bias#Adagrad/accumulator/conv2d_1/kernel!Adagrad/accumulator/conv2d_1/bias#Adagrad/accumulator/conv2d_2/kernel!Adagrad/accumulator/conv2d_2/bias Adagrad/accumulator/dense/kernelAdagrad/accumulator/dense/bias"Adagrad/accumulator/dense_1/kernel Adagrad/accumulator/dense_1/biastotal_1count_1totalcount*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_45042э┼
њ
Ю
(__inference_conv2d_2_layer_call_fn_44715

inputs!
unknown:@ 
	unknown_0: 
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44440w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name44711:%!

_user_specified_name44709:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
я

з
B__inference_dense_1_layer_call_and_return_conditional_losses_44777

inputs0
matmul_readvariableop_resource:25-
biasadd_readvariableop_resource:5
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:25*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         5^
softmax/SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         5h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         5S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
│
Ч
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44726

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
─
^
B__inference_flatten_layer_call_and_return_conditional_losses_44451

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     -  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         аZY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         аZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
њ
Ю
(__inference_conv2d_1_layer_call_fn_44685

inputs!
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44423w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name44681:%!

_user_specified_name44679:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
х
ј
*__inference_sequential_layer_call_fn_44568
conv2d_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	аZ2
	unknown_6:2
	unknown_7:25
	unknown_8:5
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_44518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         5<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ђђ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name44564:%	!

_user_specified_name44562:%!

_user_specified_name44560:%!

_user_specified_name44558:%!

_user_specified_name44556:%!

_user_specified_name44554:%!

_user_specified_name44552:%!

_user_specified_name44550:%!

_user_specified_name44548:%!

_user_specified_name44546:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
њ
Џ
&__inference_conv2d_layer_call_fn_44655

inputs!
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_44406w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         }}@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name44651:%!

_user_specified_name44649:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
х
Щ
A__inference_conv2d_layer_call_and_return_conditional_losses_44406

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
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
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
▓
I
-__inference_max_pooling2d_layer_call_fn_44671

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44378Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
│
Ч
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44423

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
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
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
љ
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44378

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
ћ
'__inference_dense_1_layer_call_fn_44766

inputs
unknown:25
	unknown_0:5
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         5<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name44762:%!

_user_specified_name44760:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
у
Њ
%__inference_dense_layer_call_fn_44746

inputs
unknown:	аZ2
	unknown_0:2
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_44463o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         аZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name44742:%!

_user_specified_name44740:P L
(
_output_shapes
:         аZ
 
_user_specified_nameinputs
╦

Ы
@__inference_dense_layer_call_and_return_conditional_losses_44463

inputs1
matmul_readvariableop_resource:	аZ2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	аZ2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         аZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         аZ
 
_user_specified_nameinputs
х
ј
*__inference_sequential_layer_call_fn_44543
conv2d_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	аZ2
	unknown_6:2
	unknown_7:25
	unknown_8:5
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_44486o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         5<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ђђ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name44539:%	!

_user_specified_name44537:%!

_user_specified_name44535:%!

_user_specified_name44533:%!

_user_specified_name44531:%!

_user_specified_name44529:%!

_user_specified_name44527:%!

_user_specified_name44525:%!

_user_specified_name44523:%!

_user_specified_name44521:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
В═
д
__inference__traced_save_44955
file_prefix>
$read_disablecopyonread_conv2d_kernel:@2
$read_1_disablecopyonread_conv2d_bias:@B
(read_2_disablecopyonread_conv2d_1_kernel:@@4
&read_3_disablecopyonread_conv2d_1_bias:@B
(read_4_disablecopyonread_conv2d_2_kernel:@ 4
&read_5_disablecopyonread_conv2d_2_bias: 8
%read_6_disablecopyonread_dense_kernel:	аZ21
#read_7_disablecopyonread_dense_bias:29
'read_8_disablecopyonread_dense_1_kernel:253
%read_9_disablecopyonread_dense_1_bias:5-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: U
;read_12_disablecopyonread_adagrad_accumulator_conv2d_kernel:@G
9read_13_disablecopyonread_adagrad_accumulator_conv2d_bias:@W
=read_14_disablecopyonread_adagrad_accumulator_conv2d_1_kernel:@@I
;read_15_disablecopyonread_adagrad_accumulator_conv2d_1_bias:@W
=read_16_disablecopyonread_adagrad_accumulator_conv2d_2_kernel:@ I
;read_17_disablecopyonread_adagrad_accumulator_conv2d_2_bias: M
:read_18_disablecopyonread_adagrad_accumulator_dense_kernel:	аZ2F
8read_19_disablecopyonread_adagrad_accumulator_dense_bias:2N
<read_20_disablecopyonread_adagrad_accumulator_dense_1_kernel:25H
:read_21_disablecopyonread_adagrad_accumulator_dense_1_bias:5+
!read_22_disablecopyonread_total_1: +
!read_23_disablecopyonread_count_1: )
read_24_disablecopyonread_total: )
read_25_disablecopyonread_count: 
savev2_const
identity_53ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 е
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:@x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ░
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 б
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 д
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_dense_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	аZ2*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	аZ2f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	аZ2w
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Ъ
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_dense_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:2{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Д
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:25*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:25e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:25y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 А
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:5*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:5a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:5x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: љ
Read_12/DisableCopyOnReadDisableCopyOnRead;read_12_disablecopyonread_adagrad_accumulator_conv2d_kernel"/device:CPU:0*
_output_shapes
 ┼
Read_12/ReadVariableOpReadVariableOp;read_12_disablecopyonread_adagrad_accumulator_conv2d_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ј
Read_13/DisableCopyOnReadDisableCopyOnRead9read_13_disablecopyonread_adagrad_accumulator_conv2d_bias"/device:CPU:0*
_output_shapes
 и
Read_13/ReadVariableOpReadVariableOp9read_13_disablecopyonread_adagrad_accumulator_conv2d_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@њ
Read_14/DisableCopyOnReadDisableCopyOnRead=read_14_disablecopyonread_adagrad_accumulator_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_14/ReadVariableOpReadVariableOp=read_14_disablecopyonread_adagrad_accumulator_conv2d_1_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@љ
Read_15/DisableCopyOnReadDisableCopyOnRead;read_15_disablecopyonread_adagrad_accumulator_conv2d_1_bias"/device:CPU:0*
_output_shapes
 ╣
Read_15/ReadVariableOpReadVariableOp;read_15_disablecopyonread_adagrad_accumulator_conv2d_1_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@њ
Read_16/DisableCopyOnReadDisableCopyOnRead=read_16_disablecopyonread_adagrad_accumulator_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_16/ReadVariableOpReadVariableOp=read_16_disablecopyonread_adagrad_accumulator_conv2d_2_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ љ
Read_17/DisableCopyOnReadDisableCopyOnRead;read_17_disablecopyonread_adagrad_accumulator_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ╣
Read_17/ReadVariableOpReadVariableOp;read_17_disablecopyonread_adagrad_accumulator_conv2d_2_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: Ј
Read_18/DisableCopyOnReadDisableCopyOnRead:read_18_disablecopyonread_adagrad_accumulator_dense_kernel"/device:CPU:0*
_output_shapes
 й
Read_18/ReadVariableOpReadVariableOp:read_18_disablecopyonread_adagrad_accumulator_dense_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	аZ2*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	аZ2f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	аZ2Ї
Read_19/DisableCopyOnReadDisableCopyOnRead8read_19_disablecopyonread_adagrad_accumulator_dense_bias"/device:CPU:0*
_output_shapes
 Х
Read_19/ReadVariableOpReadVariableOp8read_19_disablecopyonread_adagrad_accumulator_dense_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:2Љ
Read_20/DisableCopyOnReadDisableCopyOnRead<read_20_disablecopyonread_adagrad_accumulator_dense_1_kernel"/device:CPU:0*
_output_shapes
 Й
Read_20/ReadVariableOpReadVariableOp<read_20_disablecopyonread_adagrad_accumulator_dense_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:25*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:25e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:25Ј
Read_21/DisableCopyOnReadDisableCopyOnRead:read_21_disablecopyonread_adagrad_accumulator_dense_1_bias"/device:CPU:0*
_output_shapes
 И
Read_21/ReadVariableOpReadVariableOp:read_21_disablecopyonread_adagrad_accumulator_dense_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:5*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:5a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:5v
Read_22/DisableCopyOnReadDisableCopyOnRead!read_22_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_22/ReadVariableOpReadVariableOp!read_22_disablecopyonread_total_1^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_23/DisableCopyOnReadDisableCopyOnRead!read_23_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_23/ReadVariableOpReadVariableOp!read_23_disablecopyonread_count_1^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_24/DisableCopyOnReadDisableCopyOnReadread_24_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_24/ReadVariableOpReadVariableOpread_24_disablecopyonread_total^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_25/DisableCopyOnReadDisableCopyOnReadread_25_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_25/ReadVariableOpReadVariableOpread_25_disablecopyonread_count^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: Ь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ќ
valueЇBіB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHБ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B Е
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_52Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_53IdentityIdentity_52:output:0^NoOp*
T0*
_output_shapes
: Ђ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_53Identity_53:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_25/ReadVariableOpRead_25/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:@<
:
_user_specified_name" Adagrad/accumulator/dense_1/bias:B>
<
_user_specified_name$"Adagrad/accumulator/dense_1/kernel:>:
8
_user_specified_name Adagrad/accumulator/dense/bias:@<
:
_user_specified_name" Adagrad/accumulator/dense/kernel:A=
;
_user_specified_name#!Adagrad/accumulator/conv2d_2/bias:C?
=
_user_specified_name%#Adagrad/accumulator/conv2d_2/kernel:A=
;
_user_specified_name#!Adagrad/accumulator/conv2d_1/bias:C?
=
_user_specified_name%#Adagrad/accumulator/conv2d_1/kernel:?;
9
_user_specified_name!Adagrad/accumulator/conv2d/bias:A=
;
_user_specified_name#!Adagrad/accumulator/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,
(
&
_user_specified_namedense_1/bias:.	*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
х
Щ
A__inference_conv2d_layer_call_and_return_conditional_losses_44666

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
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
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
│
Ч
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44440

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
│
Ч
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44696

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
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
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
═{
╠
!__inference__traced_restore_45042
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@<
"assignvariableop_2_conv2d_1_kernel:@@.
 assignvariableop_3_conv2d_1_bias:@<
"assignvariableop_4_conv2d_2_kernel:@ .
 assignvariableop_5_conv2d_2_bias: 2
assignvariableop_6_dense_kernel:	аZ2+
assignvariableop_7_dense_bias:23
!assignvariableop_8_dense_1_kernel:25-
assignvariableop_9_dense_1_bias:5'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: O
5assignvariableop_12_adagrad_accumulator_conv2d_kernel:@A
3assignvariableop_13_adagrad_accumulator_conv2d_bias:@Q
7assignvariableop_14_adagrad_accumulator_conv2d_1_kernel:@@C
5assignvariableop_15_adagrad_accumulator_conv2d_1_bias:@Q
7assignvariableop_16_adagrad_accumulator_conv2d_2_kernel:@ C
5assignvariableop_17_adagrad_accumulator_conv2d_2_bias: G
4assignvariableop_18_adagrad_accumulator_dense_kernel:	аZ2@
2assignvariableop_19_adagrad_accumulator_dense_bias:2H
6assignvariableop_20_adagrad_accumulator_dense_1_kernel:25B
4assignvariableop_21_adagrad_accumulator_dense_1_bias:5%
assignvariableop_22_total_1: %
assignvariableop_23_count_1: #
assignvariableop_24_total: #
assignvariableop_25_count: 
identity_27ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ы
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ќ
valueЇBіB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHд
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B д
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ђ
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_12AssignVariableOp5assignvariableop_12_adagrad_accumulator_conv2d_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_13AssignVariableOp3assignvariableop_13_adagrad_accumulator_conv2d_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_14AssignVariableOp7assignvariableop_14_adagrad_accumulator_conv2d_1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_15AssignVariableOp5assignvariableop_15_adagrad_accumulator_conv2d_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_16AssignVariableOp7assignvariableop_16_adagrad_accumulator_conv2d_2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_17AssignVariableOp5assignvariableop_17_adagrad_accumulator_conv2d_2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adagrad_accumulator_dense_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adagrad_accumulator_dense_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adagrad_accumulator_dense_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adagrad_accumulator_dense_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 І
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: н
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_27Identity_27:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:@<
:
_user_specified_name" Adagrad/accumulator/dense_1/bias:B>
<
_user_specified_name$"Adagrad/accumulator/dense_1/kernel:>:
8
_user_specified_name Adagrad/accumulator/dense/bias:@<
:
_user_specified_name" Adagrad/accumulator/dense/kernel:A=
;
_user_specified_name#!Adagrad/accumulator/conv2d_2/bias:C?
=
_user_specified_name%#Adagrad/accumulator/conv2d_2/kernel:A=
;
_user_specified_name#!Adagrad/accumulator/conv2d_1/bias:C?
=
_user_specified_name%#Adagrad/accumulator/conv2d_1/kernel:?;
9
_user_specified_name!Adagrad/accumulator/conv2d/bias:A=
;
_user_specified_name#!Adagrad/accumulator/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,
(
&
_user_specified_namedense_1/bias:.	*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Й?
░	
 __inference__wrapped_model_44373
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource:@?
1sequential_conv2d_biasadd_readvariableop_resource:@L
2sequential_conv2d_1_conv2d_readvariableop_resource:@@A
3sequential_conv2d_1_biasadd_readvariableop_resource:@L
2sequential_conv2d_2_conv2d_readvariableop_resource:@ A
3sequential_conv2d_2_biasadd_readvariableop_resource: B
/sequential_dense_matmul_readvariableop_resource:	аZ2>
0sequential_dense_biasadd_readvariableop_resource:2C
1sequential_dense_1_matmul_readvariableop_resource:25@
2sequential_dense_1_biasadd_readvariableop_resource:5
identityѕб(sequential/conv2d/BiasAdd/ReadVariableOpб'sequential/conv2d/Conv2D/ReadVariableOpб*sequential/conv2d_1/BiasAdd/ReadVariableOpб)sequential/conv2d_1/Conv2D/ReadVariableOpб*sequential/conv2d_2/BiasAdd/ReadVariableOpб)sequential/conv2d_2/Conv2D/ReadVariableOpб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб)sequential/dense_1/BiasAdd/ReadVariableOpб(sequential/dense_1/MatMul/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0─
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
ќ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0│
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@|
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         }}@Й
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:         >>@*
ksize
*
paddingVALID*
strides
ц
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0т
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
џ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@ђ
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@┬
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
ц
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0у
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
џ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          ђ
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:          i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     -  Б
sequential/flatten/ReshapeReshape&sequential/conv2d_2/Relu:activations:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         аZЌ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	аZ2*
dtype0е
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ћ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Е
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         2џ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:25*
dtype0г
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         5ў
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0»
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         5ё
"sequential/dense_1/softmax/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         5{
IdentityIdentity,sequential/dense_1/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         5М
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ђђ: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:(
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
resource:($
"
_user_specified_name
resource:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
─
^
B__inference_flatten_layer_call_and_return_conditional_losses_44737

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     -  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         аZY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         аZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Я&
Я
E__inference_sequential_layer_call_and_return_conditional_losses_44486
conv2d_input&
conv2d_44407:@
conv2d_44409:@(
conv2d_1_44424:@@
conv2d_1_44426:@(
conv2d_2_44441:@ 
conv2d_2_44443: 
dense_44464:	аZ2
dense_44466:2
dense_1_44480:25
dense_1_44482:5
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallз
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_44407conv2d_44409*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_44406Ж
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44378Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_44424conv2d_1_44426*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44423­
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44388Ќ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_44441conv2d_2_44443*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44440┘
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         аZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_44451ч
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_44464dense_44466*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_44463Ѕ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_44480dense_1_44482*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44479w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         5╦
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ђђ: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:%
!

_user_specified_name44482:%	!

_user_specified_name44480:%!

_user_specified_name44466:%!

_user_specified_name44464:%!

_user_specified_name44443:%!

_user_specified_name44441:%!

_user_specified_name44426:%!

_user_specified_name44424:%!

_user_specified_name44409:%!

_user_specified_name44407:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
Х
K
/__inference_max_pooling2d_1_layer_call_fn_44701

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44388Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ѕ
Є
#__inference_signature_wrapper_44646
conv2d_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@ 
	unknown_4: 
	unknown_5:	аZ2
	unknown_6:2
	unknown_7:25
	unknown_8:5
identityѕбStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_44373o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         5<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ђђ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%
!

_user_specified_name44642:%	!

_user_specified_name44640:%!

_user_specified_name44638:%!

_user_specified_name44636:%!

_user_specified_name44634:%!

_user_specified_name44632:%!

_user_specified_name44630:%!

_user_specified_name44628:%!

_user_specified_name44626:%!

_user_specified_name44624:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
Ф
C
'__inference_flatten_layer_call_fn_44731

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         аZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_44451a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         аZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
њ
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44706

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
љ
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44676

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
я

з
B__inference_dense_1_layer_call_and_return_conditional_losses_44479

inputs0
matmul_readvariableop_resource:25-
biasadd_readvariableop_resource:5
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:25*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         5^
softmax/SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         5h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         5S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Я&
Я
E__inference_sequential_layer_call_and_return_conditional_losses_44518
conv2d_input&
conv2d_44489:@
conv2d_44491:@(
conv2d_1_44495:@@
conv2d_1_44497:@(
conv2d_2_44501:@ 
conv2d_2_44503: 
dense_44507:	аZ2
dense_44509:2
dense_1_44512:25
dense_1_44514:5
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallз
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_44489conv2d_44491*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_44406Ж
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44378Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_44495conv2d_1_44497*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44423­
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44388Ќ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_44501conv2d_2_44503*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44440┘
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         аZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_44451ч
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_44507dense_44509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_44463Ѕ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_44512dense_1_44514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44479w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         5╦
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         ђђ: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:%
!

_user_specified_name44514:%	!

_user_specified_name44512:%!

_user_specified_name44509:%!

_user_specified_name44507:%!

_user_specified_name44503:%!

_user_specified_name44501:%!

_user_specified_name44497:%!

_user_specified_name44495:%!

_user_specified_name44491:%!

_user_specified_name44489:_ [
1
_output_shapes
:         ђђ
&
_user_specified_nameconv2d_input
╦

Ы
@__inference_dense_layer_call_and_return_conditional_losses_44757

inputs1
matmul_readvariableop_resource:	аZ2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	аZ2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         аZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         аZ
 
_user_specified_nameinputs
њ
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44388

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"ДL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
O
conv2d_input?
serving_default_conv2d_input:0         ђђ;
dense_10
StatefulPartitionedCall:0         5tensorflow/serving/predict:ы┬
л
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
П
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
Ц
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
П
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
Ц
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias"
_tf_keras_layer
╦
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M
activation

Nkernel
Obias"
_tf_keras_layer
f
0
1
'2
(3
64
75
E6
F7
N8
O9"
trackable_list_wrapper
f
0
1
'2
(3
64
75
E6
F7
N8
O9"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
К
Utrace_0
Vtrace_12љ
*__inference_sequential_layer_call_fn_44543
*__inference_sequential_layer_call_fn_44568х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zUtrace_0zVtrace_1
§
Wtrace_0
Xtrace_12к
E__inference_sequential_layer_call_and_return_conditional_losses_44486
E__inference_sequential_layer_call_and_return_conditional_losses_44518х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zWtrace_0zXtrace_1
лB═
 __inference__wrapped_model_44373conv2d_input"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ј
Y
_variables
Z_iterations
[_learning_rate
\_index_dict
]_accumulators
^_update_step_xla"
experimentalOptimizer
,
_serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Я
etrace_02├
&__inference_conv2d_layer_call_fn_44655ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zetrace_0
ч
ftrace_02я
A__inference_conv2d_layer_call_and_return_conditional_losses_44666ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zftrace_0
':%@2conv2d/kernel
:@2conv2d/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
у
ltrace_02╩
-__inference_max_pooling2d_layer_call_fn_44671ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zltrace_0
ѓ
mtrace_02т
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44676ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zmtrace_0
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Р
strace_02┼
(__inference_conv2d_1_layer_call_fn_44685ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zstrace_0
§
ttrace_02Я
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44696ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zttrace_0
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ж
ztrace_02╠
/__inference_max_pooling2d_1_layer_call_fn_44701ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zztrace_0
ё
{trace_02у
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44706ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z{trace_0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
«
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
ђlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
С
Ђtrace_02┼
(__inference_conv2d_2_layer_call_fn_44715ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЂtrace_0
 
ѓtrace_02Я
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44726ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0
):'@ 2conv2d_2/kernel
: 2conv2d_2/bias
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ѓnon_trainable_variables
ёlayers
Ёmetrics
 єlayer_regularization_losses
Єlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
с
ѕtrace_02─
'__inference_flatten_layer_call_fn_44731ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѕtrace_0
■
Ѕtrace_02▀
B__inference_flatten_layer_call_and_return_conditional_losses_44737ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЅtrace_0
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
р
Јtrace_02┬
%__inference_dense_layer_call_fn_44746ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЈtrace_0
Ч
љtrace_02П
@__inference_dense_layer_call_and_return_conditional_losses_44757ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zљtrace_0
:	аZ22dense/kernel
:22
dense/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
с
ќtrace_02─
'__inference_dense_1_layer_call_fn_44766ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zќtrace_0
■
Ќtrace_02▀
B__inference_dense_1_layer_call_and_return_conditional_losses_44777ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЌtrace_0
Ф
ў	variables
Ўtrainable_variables
џregularization_losses
Џ	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
 :252dense_1/kernel
:52dense_1/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
ъ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBв
*__inference_sequential_layer_call_fn_44543conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
*__inference_sequential_layer_call_fn_44568conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЅBє
E__inference_sequential_layer_call_and_return_conditional_losses_44486conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЅBє
E__inference_sequential_layer_call_and_return_conditional_losses_44518conv2d_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
x
Z0
а1
А2
б3
Б4
ц5
Ц6
д7
Д8
е9
Е10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
а0
А1
б2
Б3
ц4
Ц5
д6
Д7
е8
Е9"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
┘Bо
#__inference_signature_wrapper_44646conv2d_input"ъ
Ќ▓Њ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 !

kwonlyargsџ
jconv2d_input
kwonlydefaults
 
annotationsф *
 
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
лB═
&__inference_conv2d_layer_call_fn_44655inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
вBУ
A__inference_conv2d_layer_call_and_return_conditional_losses_44666inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ОBн
-__inference_max_pooling2d_layer_call_fn_44671inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44676inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
мB¤
(__inference_conv2d_1_layer_call_fn_44685inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44696inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
┘Bо
/__inference_max_pooling2d_1_layer_call_fn_44701inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44706inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
мB¤
(__inference_conv2d_2_layer_call_fn_44715inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44726inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ЛB╬
'__inference_flatten_layer_call_fn_44731inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_flatten_layer_call_and_return_conditional_losses_44737inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
¤B╠
%__inference_dense_layer_call_fn_44746inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_dense_layer_call_and_return_conditional_losses_44757inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛB╬
'__inference_dense_1_layer_call_fn_44766inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_dense_1_layer_call_and_return_conditional_losses_44777inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
фnon_trainable_variables
Фlayers
гmetrics
 Гlayer_regularization_losses
«layer_metrics
ў	variables
Ўtrainable_variables
џregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
Ф2еЦ
ъ▓џ
FullArgSpec
argsџ
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ф2еЦ
ъ▓џ
FullArgSpec
argsџ
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
»	variables
░	keras_api

▒total

▓count"
_tf_keras_metric
c
│	variables
┤	keras_api

хtotal

Хcount
и
_fn_kwargs"
_tf_keras_metric
9:7@2!Adagrad/accumulator/conv2d/kernel
+:)@2Adagrad/accumulator/conv2d/bias
;:9@@2#Adagrad/accumulator/conv2d_1/kernel
-:+@2!Adagrad/accumulator/conv2d_1/bias
;:9@ 2#Adagrad/accumulator/conv2d_2/kernel
-:+ 2!Adagrad/accumulator/conv2d_2/bias
1:/	аZ22 Adagrad/accumulator/dense/kernel
*:(22Adagrad/accumulator/dense/bias
2:0252"Adagrad/accumulator/dense_1/kernel
,:*52 Adagrad/accumulator/dense_1/bias
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
0
▒0
▓1"
trackable_list_wrapper
.
»	variables"
_generic_user_object
:  (2total
:  (2count
0
х0
Х1"
trackable_list_wrapper
.
│	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЦ
 __inference__wrapped_model_44373ђ
'(67EFNO?б<
5б2
0і-
conv2d_input         ђђ
ф "1ф.
,
dense_1!і
dense_1         5║
C__inference_conv2d_1_layer_call_and_return_conditional_losses_44696s'(7б4
-б*
(і%
inputs         >>@
ф "4б1
*і'
tensor_0         <<@
џ ћ
(__inference_conv2d_1_layer_call_fn_44685h'(7б4
-б*
(і%
inputs         >>@
ф ")і&
unknown         <<@║
C__inference_conv2d_2_layer_call_and_return_conditional_losses_44726s677б4
-б*
(і%
inputs         @
ф "4б1
*і'
tensor_0          
џ ћ
(__inference_conv2d_2_layer_call_fn_44715h677б4
-б*
(і%
inputs         @
ф ")і&
unknown          ║
A__inference_conv2d_layer_call_and_return_conditional_losses_44666u9б6
/б,
*і'
inputs         ђђ
ф "4б1
*і'
tensor_0         }}@
џ ћ
&__inference_conv2d_layer_call_fn_44655j9б6
/б,
*і'
inputs         ђђ
ф ")і&
unknown         }}@Е
B__inference_dense_1_layer_call_and_return_conditional_losses_44777cNO/б,
%б"
 і
inputs         2
ф ",б)
"і
tensor_0         5
џ Ѓ
'__inference_dense_1_layer_call_fn_44766XNO/б,
%б"
 і
inputs         2
ф "!і
unknown         5е
@__inference_dense_layer_call_and_return_conditional_losses_44757dEF0б-
&б#
!і
inputs         аZ
ф ",б)
"і
tensor_0         2
џ ѓ
%__inference_dense_layer_call_fn_44746YEF0б-
&б#
!і
inputs         аZ
ф "!і
unknown         2«
B__inference_flatten_layer_call_and_return_conditional_losses_44737h7б4
-б*
(і%
inputs          
ф "-б*
#і 
tensor_0         аZ
џ ѕ
'__inference_flatten_layer_call_fn_44731]7б4
-б*
(і%
inputs          
ф ""і
unknown         аZЗ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_44706ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╬
/__inference_max_pooling2d_1_layer_call_fn_44701џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ы
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_44676ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╠
-__inference_max_pooling2d_layer_call_fn_44671џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    ═
E__inference_sequential_layer_call_and_return_conditional_losses_44486Ѓ
'(67EFNOGбD
=б:
0і-
conv2d_input         ђђ
p

 
ф ",б)
"і
tensor_0         5
џ ═
E__inference_sequential_layer_call_and_return_conditional_losses_44518Ѓ
'(67EFNOGбD
=б:
0і-
conv2d_input         ђђ
p 

 
ф ",б)
"і
tensor_0         5
џ д
*__inference_sequential_layer_call_fn_44543x
'(67EFNOGбD
=б:
0і-
conv2d_input         ђђ
p

 
ф "!і
unknown         5д
*__inference_sequential_layer_call_fn_44568x
'(67EFNOGбD
=б:
0і-
conv2d_input         ђђ
p 

 
ф "!і
unknown         5И
#__inference_signature_wrapper_44646љ
'(67EFNOOбL
б 
EфB
@
conv2d_input0і-
conv2d_input         ђђ"1ф.
,
dense_1!і
dense_1         5