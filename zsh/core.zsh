SLOW_BOOT=1.5

include () { test -e "$1" && source "$1" }

ts_start() { export CORE_TS_BEGIN="$(gdate "+%s%N")" }
ts_stop() { echo "$((($(gdate "+%s%N") - ${CORE_TS_BEGIN})))" }
ts_diff() { echo "$(($(ts_stop)/1e9))" }
ts_begin() { ts_start }
ts_measure() { echo "elapsed: $(ts_diff)s" }
ts_slow_measure() { [[ ( $(ts_diff) > $SLOW_BOOT ) ]] && ts_measure }
ts_end() { unset CORE_TS_BEGIN }
