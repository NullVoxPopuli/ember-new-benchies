To test how quickly we can generate an on-demand ember app, this repo will explore what modifications are needed to  make that as fast as possible


## Results

```
❯ ./run.sh
Benchmark 1: ./pnpm.sh
  Time (mean ± σ):      8.677 s ±  0.428 s    [User: 7.834 s, System: 3.375 s]
  Range (min … max):    8.140 s …  9.247 s    7 runs

Benchmark 2: ./npm.sh
  Time (mean ± σ):     14.814 s ±  0.047 s    [User: 19.930 s, System: 5.288 s]
  Range (min … max):   14.748 s … 14.864 s    7 runs

Benchmark 3: ./yarn.sh
  Time (mean ± σ):     28.795 s ±  7.414 s    [User: 10.359 s, System: 6.881 s]
  Range (min … max):   21.661 s … 44.747 s    7 runs

Benchmark 4: REMOVE_LINTS=true ./pnpm.sh
  Time (mean ± σ):      8.165 s ±  0.399 s    [User: 7.449 s, System: 3.194 s]
  Range (min … max):    7.780 s …  8.995 s    7 runs

Benchmark 5: REMOVE_LINTS=true ./npm.sh
  Time (mean ± σ):     14.117 s ±  1.285 s    [User: 18.659 s, System: 5.052 s]
  Range (min … max):   13.469 s … 16.959 s    7 runs

  Warning: Statistical outliers were detected. Consider re-running this benchmark on a quiet PC without any interferences from other programs. It might help to use the '--warmup' or '--prepare' options.

Benchmark 6: REMOVE_LINTS=true ./yarn.sh
  Time (mean ± σ):     22.824 s ±  4.317 s    [User: 9.247 s, System: 6.439 s]
  Range (min … max):   17.570 s … 29.695 s    7 runs

Summary
  'REMOVE_LINTS=true ./pnpm.sh' ran
    1.06 ± 0.07 times faster than './pnpm.sh'
    1.73 ± 0.18 times faster than 'REMOVE_LINTS=true ./npm.sh'
    1.81 ± 0.09 times faster than './npm.sh'
    2.80 ± 0.55 times faster than 'REMOVE_LINTS=true ./yarn.sh'
    3.53 ± 0.92 times faster than './yarn.sh'

```

<details><summary>hardware</summary>

```

❯ screenfetch
                          ./+o+-
                  yyyyy- -yyyyyy+      OS: Ubuntu 22.04 jammy
               ://+//////-yyyyyyo      Kernel: x86_64 Linux 5.15.0-43-generic
           .++ .:/++++++/-.+sss/`      Uptime: 8h 56m
         .:++o:  /++++++++/:--:/-      Packages: 2553
        o:+o+:++.`..```.-/oo+++++/     Shell: bash 5.1.16
       .:+o:+o/.          `+sssoo+/    Resolution: 2256x1504
  .++/+:+oo+o:`             /sssooo.   DE: GNOME 41.7
 /+++//+:`oo+o               /::--:.   WM: Mutter
 \+/+o+++`o++o               ++////.   WM Theme: Sweet-Dark-v40
  .++.o+++oo+:`             /dddhhh.   GTK Theme: Yaru [GTK2/3]
       .+.o+oo:.          `oddhhhh+    Icon Theme: Yaru
        \+.++o+o``-````.:ohdhhhhh+     Font: Ubuntu 11
         `:o+++ `ohhhhhhhhyo++os:      Disk: 115G / 5.2T (3%)
           .o:`.syhhhhhhh/.oo++o`      CPU: 11th Gen Intel Core i5-1135G7 @ 8x 4.2GHz [54.0°C]
               /osyyyyyyo++ooo+++/     GPU: Iris Xe Graphics
                   ````` +oo+++o\:     RAM: 29454MiB / 31891MiB
                          `oo++.

```

</details>
