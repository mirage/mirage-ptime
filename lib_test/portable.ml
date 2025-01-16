let print_time () =
  let now = Mirage_ptime.now () in
  Format.printf "The time is %a.\n" (Ptime.pp_rfc3339 ()) now

let print_offset c =
  match Mirage_ptime.current_tz_offset_s c with
  | Some offset -> Printf.printf "The offset from UTC is %d minutes.\n" offset
  | None -> Printf.printf "Clock UTC offset unavailable\n"

let print_period c =
  match Mirage_ptime.period c with
  | Some span -> Format.printf "The clock period is: %a\n" Ptime.Span.pp span
  | None -> Printf.printf "Clock period unavailable\n"

let () =
  print_time ();
  print_time ();
  print_time ();
  print_offset ();
  print_period ()
