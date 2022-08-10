To test how quickly we can generate an on-demand ember app, this repo will explore what modifications are needed to  make that as fast as possible


## Results

```
❯ ./run.sh
Benchmark 1: ./pnpm.sh
  Time (mean ± σ):     11.391 s ±  2.491 s    [User: 8.019 s, System: 3.410 s]
  Range (min … max):    9.929 s … 16.952 s    7 runs

Benchmark 2: ./npm.sh
  Time (mean ± σ):     19.100 s ±  0.086 s    [User: 24.613 s, System: 6.839 s]
  Range (min … max):   18.962 s … 19.242 s    7 runs

Benchmark 3: ./yarn.sh
  Time (mean ± σ):     27.737 s ±  1.217 s    [User: 9.829 s, System: 6.585 s]
  Range (min … max):   25.967 s … 29.714 s    7 runs

Benchmark 4: REMOVE_LINTS=true ./pnpm.sh
  Time (mean ± σ):     11.552 s ±  1.626 s    [User: 8.214 s, System: 3.571 s]
  Range (min … max):   10.264 s … 15.105 s    7 runs

Benchmark 5: REMOVE_LINTS=true ./npm.sh
  Time (mean ± σ):     17.800 s ±  0.107 s    [User: 22.858 s, System: 6.328 s]
  Range (min … max):   17.647 s … 17.921 s    7 runs

Benchmark 6: REMOVE_LINTS=true ./yarn.sh
  Time (mean ± σ):     37.742 s ±  6.319 s    [User: 11.260 s, System: 7.092 s]
  Range (min … max):   31.498 s … 47.259 s    7 runs

Summary
  './pnpm.sh' ran
    1.01 ± 0.26 times faster than 'REMOVE_LINTS=true ./pnpm.sh'
    1.56 ± 0.34 times faster than 'REMOVE_LINTS=true ./npm.sh'
    1.68 ± 0.37 times faster than './npm.sh'
    2.44 ± 0.54 times faster than './yarn.sh'
    3.31 ± 0.91 times faster than 'REMOVE_LINTS=true ./yarn.sh'
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
