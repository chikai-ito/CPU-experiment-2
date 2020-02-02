open Enums

type code_t = instr list
and instr = { instr_id : Id.t; op : op_t}
and op_t = 
  | Phi of (Id.t * Type.t) * (Id.t * Id.l) list
  | Nop
  | Set of (Id.t * Type.t) * int
  | SetL of (Id.t * Type.t) * Id.l
  | Mov of (Id.t * Type.t) * Id.t
  | Neg of (Id.t * Type.t) * Id.t
  | Itof of (Id.t * Type.t) * Id.t
  | In of (Id.t * Type.t)
  | Fin of (Id.t * Type.t)
  | Out of Id.t
  | AddI of (Id.t * Type.t) * Id.t * int
  | Add of (Id.t * Type.t) * Id.t * Id.t
  | Sub of (Id.t * Type.t) * Id.t * Id.t
  | Mul of (Id.t * Type.t) * Id.t * Id.t
  | Div of (Id.t * Type.t) * Id.t * Id.t
  | SLL of (Id.t * Type.t) * Id.t * Id.t
  | SLLI of (Id.t * Type.t) * Id.t * int
  | Ld of (Id.t * Type.t) * mem * Id.t * Asm2.id_or_imm
  | St of mem * Id.t * Id.t * Asm2.id_or_imm
  | FMov of (Id.t * Type.t) * Id.t
  | Ftoi of (Id.t * Type.t) * Id.t
  | FNeg of (Id.t * Type.t) * Id.t
  | Floor of (Id.t * Type.t) * Id.t
  | FSqrt of (Id.t * Type.t) * Id.t
  | FAdd of (Id.t * Type.t) * Id.t * Id.t
  | FSub of (Id.t * Type.t) * Id.t * Id.t
  | FMul of (Id.t * Type.t) * Id.t * Id.t
  | FDiv of (Id.t * Type.t) * Id.t * Id.t
  | LdF of (Id.t * Type.t) * mem * Id.t * Asm2.id_or_imm
  | StF of mem * Id.t * Id.t * Asm2.id_or_imm
  | CallCls of (Id.t * Type.t) * Id.t * Id.t list * Id.t list
  | CallDir of (Id.t * Type.t) * Id.l * Id.t list * Id.t list
  | Entry of Id.t list * Id.t list
  | Return of (Id.t * Type.t) (* プログラムの答えを返す命令; ルーチンの最後につく *)
  | Save of Id.t (* regname * ident *)
  | Restore of Id.t

val new_iid : unit -> Id.t

val new_instr : op_t -> instr

type block = { mutable label : Id.l;
               mutable l_dep : int;
               mutable code : code_t;
               mutable prev : block list; mutable next : next_t }
and next_t = Brc of compare_t * block ref * block ref (* branch *)
           | Cnfl of block ref (* confluence *)
           | Loop of block ref (* entering into loop *)
           | Back of Id.l * block ref (* loop back *)
           | End (* end of the flow *)
and compare_t = { branch : Type.t * cmp; args : Id.t * Id.t }

val label_of_block : block -> Id.t
  
val next_blocks : block -> block list

val f : Asm2.prog -> (Id.l * Asm2.data_t) list * (block list) list * block list
                                
