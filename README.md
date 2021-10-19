# 배쉬 쉘 연습

- 여러가지 기본적인 BASH shell 스크립트 명령어를연습합니다.
- https://www.youtube.com/watch?v=v-F3YLd6oMw

## 출력하기

```bash
echo Hello Bash!
```

## 변수 지정

- 통상적으로 대문자로 표기한다.

```bash
NAME="Bab"
echo "My name is $NAME"
```

## 입력하기

```bash
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"
```

## If 문

- `if` 다음 `then`을 적는다.
- `fi`로 끝낸다.

```bash
if [ "$NAME" == "Hoesung" ]
then
  echo "Your name is Hoesung"
elif [ "$NAME" == "Elliot" ]
then
  echo "Your name is Elliot"
else
  echo "Your name is NOT Hoesung or Elliot"
fi
```

## 비교

- `-eq` : ==
- `-ne` : !=
- `-gt` : >
- `-ge` : >=
- `-lt` : <
- `-le` : <=

```bash
NUM1=31
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi
```

## 파일 조건문

- `-d file`: True if the file is a directory
- `-e file`: True if the file exists(not that this is not particularly portable, thus -f is generally used)
- `-f file`: True if the provided string is a file
- `-g file`: True if the group id is set on a file
- `-r file`: True if the file is readable
- `-s file`: True if the file has a non-zero size
- `-u`: True if the user id is set on a file
- `-w`: True if the file is writable
- `-x`: True if the file is an executable

```bash
FILE="test.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does NOT exist"
fi
```

## Case 문

- `)`와 `;;`와 `*)`를 사용한다.
- `esac`을 종료한다.

```bash
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN][oO])
    echo "Sorry, no drinking"
    ;;
  *)
    echo "Please enter y/yes or n/no"
    ;;
esac
```

## For 문

- 간단한 for 문

```bash
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
  do
    echo "Hello $NAME"
done
```

- for 문으로 파일 이름 변경

```bash
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done
```

## While 문

- 파일에서 한줄씩 읽어들이기

```bash
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-new-1.txt"
```

## 함수

- 기본적인 함수

```bash
function sayHello(){
  echo "Hello World"
}

sayHello
```

- 위치 파라매터가 있는 함수

```bash
function greet () {
  echo "Hello, I am $1 and I am $2"
}

greet "Brad" "32"
```

## 폴더와 파일 만들고 쓰기

```bash
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"
```
