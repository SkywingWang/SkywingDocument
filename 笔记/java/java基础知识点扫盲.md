一、关于Java语言的一些基础知识点

1. Java的重要特性：网络技能，多线程，安全性，动态性，结构中立。其中结构中立可解释为，Java编译器生成一个体系结构中立的目标文件格式，这是一种编译过的代码，只要机器中有Java运行环境便可运行。
2. Java编译器能够检测许多在其他语言中仅在运行时刻才能够检测出来的问题。
3. Java解释器可以在任何安装了解释器的机器上执行Java字节码。
4. JDK，编写java程序的软件；JRE，运行Java程序的软件，包含虚拟机而不包含编译器；在没有IDE的情况下，用命令行执行Java代码，Javac程序是一个Java编译器，编译后得到一个class文件，再用java程序来执行Java字节码。
5. JavaSE，用于桌面或简单的服务器应用的Java平台；
6. JavaEE，用于复杂的服务器应用的Java平台；
7. JavaME，用于手机和其他小型设备的Java平台。

二、静态变量，静态常量和静态方法 static

1. 如果将变量定义为static，每个类中只有一个这样的变量，该类的所有的实例对象将共享这个静态变量。
2. 静态常量用static final 来修饰，初始化一次且不再修改
3. 静态方法是一种不能向对象实施操作的方法。在两种情况下使用静态方法：一是，一个方法不需要访问对象状态，其所需参数都是通过显式参数提供；二是，一个方法只需要访问类的静态域。

三、finalize方法

在C++中有显式的析构器，其功能为当一些对象不再使用时清理其使用的资源。由于Java有自动的垃圾回收器，不需要人工回收内存，故Java不支持析构器，但当某些对象使用了除内存以外的其他资源，并且这些资源不再需要时将其回收再利用就显得十分重要。任何一个类都可以使用finalize方法，该方法将在垃圾回收器清除对象之前调用。

四、反射

在运行时使用反射获取或分析对象。
作用：增加程序的灵活性，避免将程序写死在代码里，常用与spring等框架中，后续加上springMVC的反射机制。

五、内部类

内部类可以访问外部类的属性和方法；
局部内部类，在一个方法中定义一个内部类，局部类不能用public或private访问说明符进行声明，它的作用域仅限于该方法块中。
匿名内部类，如果只创建这个类的一个对象，则直接使用匿名内部类。

六、异常

异常在笔试中经常出现，基础知识应当牢牢掌握。
1. 异常基本概念
Java中，异常对象都是派生于Throwable类的实例，分为error和exception，其中error不常用，面试中也不常涉及，这里主要讲exception。
exception分为两种：RuntimeException和其他异常。
常见的RuntimeException异常：
错误的类型转换；
数组访问越界；
访问空指针。
其他典型异常：
试图在文件尾部的后面读取数据；
试图打开一个不存在的文件；
试图通过给定的字符串查找Class对象，但该字符串表示的类不存在。
如果出现RuntimeException异常，那么一定是自己的程序出现了问题；而程序本身没有问题，但由于像I/O错误这类导致的异常属于其他异常。
未检查异常：error类或RuntimeException类异常。
已检查异常：所有其他异常。
2. 自定义异常
继承Exception类或Exception的子类
3. try/catch/finally
编程中建议独立使用try/catch和try/finally语句块。
```
public static String testfunction()
    {
        File file = new File("E:\\test\\java\\pm2_5\\2.json");

        FileInputStream filein = null;
        BufferedReader reader = null;
        try 
        {
            try 
            {
                filein = new FileInputStream(file);
                reader = new BufferedReader(new InputStreamReader(filein));
                StringBuffer strBuf = new StringBuffer();
                String str = "";
                while((str = reader.readLine()) != null)
                {
                    strBuf.append(str);
                }
                return strBuf.toString();
            } 
            finally 
            {
                if(filein != null)
                {
                    filein.close();
                }
                if(reader != null)
                {
                    reader.close();
                }
            }
        } catch (FileNotFoundException e) {
            //打印异常日志
            e.printStackTrace();
            return "";
        } catch (IOException e) {
            //打印异常日志
            e.printStackTrace();
            return "";
        }
    }
```
这种设计方式不仅清楚而且在finally语句块中的异常也会在外层报告。内层的try语句块只有一个职责，就是确保关闭输入流，而外层的try语句块也只有一个职责，就是确保报告出现的错误。
通过上面的代码可以看出，如果try块抛出异常，而且close方法也会抛出异常，那么就会使得代码显得臃肿，一个很好的解决方法是使用带资源的try语句。
Java 7 的编译器和运行环境支持新的 try-with-resources 语句

```
public static String testfunction2()
    {
        File file = new File("E:\\test\\java\\pm2_5\\2.json");

        try(FileInputStream filein = new FileInputStream(file);
                BufferedReader reader = new BufferedReader(new InputStreamReader(filein)))
        {
            StringBuffer strBuf = new StringBuffer();
            String str = "";
            while((str = reader.readLine()) != null)
            {
                strBuf.append(str);
            }
            return strBuf.toString();
        }
        catch (Exception e) {
            //打印异常日志
            e.printStackTrace();
            return "";
        }
    }
```
数据流会在 try 执行完毕后自动被关闭，前提是，这些可关闭的资源必须实现 java.lang.AutoCloseable 接口。
异常的规则：“早抛出，晚捕获”。
