void main() {
  String text = 'Hello World';
  print(text);

  int num1 = 10;
  int num2 = 20;
  int sum = add(num1, num2);

  if (sum < 0 ) {
    print('no print');
  } else if (sum == 30){
    print('correct answer: $sum');
  } else {
    print('fail');
  }
  print(sum);
  // sum = 50;
  switch(sum) {
    case 10:
      print('Switch $sum');
    case 20:
      print('Switch $sum');
      break;
    case 30:
      print('Switch $sum');
      print('answer');
      // only upper Dart 3.0
    case > 30:
      print('Big number!! $sum');
    case > 100:
      print('100 over number $sum');
    default:
      print('Not 10 ~ 30');
  }

  for (int i= 0; i < 10; i++){
    print('Running for index $i');
  }

  List<int> indexs = [0,1,2,3,4,5];
  for(final index in indexs) {
    print('Running for index in $index');
  }

  bool isRunning = true;
  int count = 0;
  while(isRunning) {
    if(count >= 5) {
      isRunning = false;
    }
    print('while is Running! : $count');
    count++;
  }

  int num = 0;
  do {
    num++;
    if (num == 5) {
      continue;
    }
    print('Running Do while $num');
  } while (num < 10);

  // exception
  int num4 = 10;
  try {
    print(10~/0);
  } catch (error, stack) {
    print(error);
    print(stack);
  } finally {
    print('무조건 처리됨 try 끝');
  }

  print('위 에러로 안찍힘');

  int? num5;
  try {
    //print(10~/0);
    //print(num5!);
    throw Exception('Unknown Error');
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s){
    print('Null 참조됐습니다.');
  } catch (e, s) {
    print('알 수 없는 오류가 발생했습니다.');
    //rethrow;
  }
  print('위 에러로 안찍힘2');

// async
  todo(3);
  todo(1);
  todo(5);

  todoStream().listen((event) { });
}


// async / await / Future : 1회만 응답 받는 경우
Future<void> todo(int second) async {
  await Future.delayed(Duration(seconds: second));
  print('TODO DONE in $second seconds!');
}

// async* / yield / Stream : 지속적으로 응답 받는 경우
Stream<int> todoStream() async* {
  int counter = 0;
  
  while(counter <= 10) {
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print('TODO is Running $counter');
    yield counter;
  }

  print('TODO is done');
}

int add(int num1, int num2) {
  return num1 + num2;
}


