let now = ref (0, 0L)

let tz_off : int option ref = ref None

let period : (int * int64) option ref = ref None

let set (days, picos) = now := (days, picos)

let set_tz_offset v = tz_off := v

let set_period p = period := p
