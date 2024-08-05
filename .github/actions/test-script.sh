# Simple test script for greetings jar

set -e # 에러 발생 시 즉시 종료

java -jar build/libs/greetings-$1.jar ${@:2} > output.bench
IFS=' ' read -ra ARR <<< "${@:2}"
for i in "{ARR[@]}"; do
    grep "^$i$" output.bench
done