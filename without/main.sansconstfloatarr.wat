(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "free" (func $free (param i32)))
 (import "env" "malloc" (func $malloc (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (export "_Znwj" (func $_Znwj))
 (export "_Znaj" (func $_Znaj))
 (export "_ZdlPv" (func $_ZdlPv))
 (export "_ZdaPv" (func $_ZdaPv))
 (export "GetFloatArr" (func $GetFloatArr))
 (func $_Znwj (param $0 i32) (result i32)
  (call $malloc
   (get_local $0)
  )
 )
 (func $_Znaj (param $0 i32) (result i32)
  (call $malloc
   (get_local $0)
  )
 )
 (func $_ZdlPv (param $0 i32)
  (call $free
   (get_local $0)
  )
 )
 (func $_ZdaPv (param $0 i32)
  (call $free
   (get_local $0)
  )
 )
 (func $GetFloatArr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $4
      (i32.load offset=12
       (i32.const 0)
      )
     )
    )
   )
   (call $free
    (get_local $4)
   )
  )
  (i32.store offset=12
   (i32.const 0)
   (tee_local $1
    (call $malloc
     (select
      (i32.const -1)
      (i32.wrap/i64
       (tee_local $2
        (i64.shl
         (i64.extend_u/i32
          (get_local $0)
         )
         (i64.const 2)
        )
       )
      )
      (i32.wrap/i64
       (i64.shr_u
        (get_local $2)
        (i64.const 32)
       )
      )
     )
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $4
    (i32.const 0)
   )
   (set_local $3
    (get_local $1)
   )
   (loop $label$2
    (f32.store
     (get_local $3)
     (f32.convert_s/i32
      (get_local $4)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 4)
     )
    )
    (br_if $label$2
     (i32.ne
      (get_local $0)
      (tee_local $4
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (get_local $1)
 )
)
