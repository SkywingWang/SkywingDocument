### Cannot add the same observer with different lifecycles
1.碰到这个报错产生的原因是，使用Kotlin + LiveData + Lambda表达式时，如果observe中使用了Lambda表达式并且Lambda表达式的函数体为空则产生这个报错。解决方式是函数体内添加执行语句或者用匿名类的方式。