(*
 * Copyright (c) 2015 Matt Gray <matthew.thomas.gray@gmail.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)
(** {2 POSIX clock}

    Clock counting time since the Unix epoch. Subject to adjustment by e.g. NTP. *)

val now : unit -> Ptime.t
(** [now_d_ps ()] is the current POSIX time. *)

val current_tz_offset_s : unit -> int option
(** [current_tz_offset_s ()] is the clock's current local time zone offset to
    UTC in seconds, if known. This is the duration local time - UTC time in
    seconds. *)

val period : unit -> Ptime.span option
(** [period ()] is a positive POSIX time span representing the clock'd period
    (if available). *)
