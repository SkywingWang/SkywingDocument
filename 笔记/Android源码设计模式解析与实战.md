### 一.面向对象的六大原则

#### 1.单一职责原则，SRP

​		单一职责原则，Single Responsibility Principle，SRP的定义是：就一个类而言，应该仅有一个引起它变化的原因。

#### 2.开闭原则，OCP

​		让程序更稳定、更灵活，开闭原则，Open Close Principle，OCP的定义是：软件中的对象（类、模块、函数等）应该对于扩展是开放的，但是对于修改是封闭的。

#### 3.里氏替换原则，LSP

​		构建扩展性更好的系统，里氏替换原则，Liskov Substitution Principle，LSP的定义是：如果对每一个类型为S的对象O1，都有类型为T的对象O2，使得以T定义的所有程序P在所有的对象O1都代换成O2时，程序P的行为没有发生变化，那么类型S是类型T的子类型。或称，所有引用基类的地方必须透明地使用其子类的对象。里氏替换原则的核心原理是抽象，抽象又依赖于继承这个特性。在OOP当中，继承的优缺点都相当明显。

优点有以下几点：

​		1.代码重用，减少创建类的成本，每个子类都拥有父类的方法和属性；

​		2.子类与父类基本相似，但又与父类有所区别；

​		3.提高代码的可扩展性。

继承的缺点：

​		1.继承是侵入性的，只要继承就必须拥有父类的所有属性和方法；

​		2.可能造成子类代码冗余、灵活性降低，因为子类必须拥有父类的属性和方法。

#### 4.依赖倒置原则，DIP

​		让项目拥有变化的能力，依赖倒置原则，Dependence Inversion Principle，DIP的定义是：依赖倒置原则指代了一种特定的解耦形式，使得高层次的模块不依赖于低层次的模块的实现细节的目的。依赖倒置原则有以下几个关键点：

​		1.高层模块不应该依赖低层模块，两者都应该依赖其抽象；

​		2.抽象不应该依赖细节；

​		3.细节应该依赖抽象。

​		在JAVA语言中的表现就是：模块间的依赖通过抽象发生，实现类之间不发生直接的依赖关系，其依赖关系是通过接口或抽象类产生的。

#### 5.接口隔离原则，ISP

​		系统有更高的灵活性，接口隔离原则，Interface Segregation Principle，ISP的定义是：客户端不应该依赖它不需要的接口。类间的依赖关系应该建立在最小的接口上。接口隔离原则的目的是系统解开耦和，从而容易重构、更改和重新部署

#### 6.迪米特原则，LOD

​		更好的扩展性，迪米特原则。Law of Demeter —— LOD。也称为最少知识原则，定义是：一个对象应该对其他对象有最少的了解。

### 二.单例模式

#### 1.单例模式的定义

​		确保某一个类只有一个实例，而且自行实例化并向整个系统提供这个实例。使用场景：避免产生多个对象消耗过多的资源，或者某种类型的对象只应该有且只有一个。例如，创建一个对象需要消耗的资源过多，如要访问IO和数据库等资源，这时就要考虑使用单例模式。

#### 2.实现单例模式主要有以下几个关键点

​		1.构造函数不对外开放，一般为private。

​		2.通过一个静态方法或者枚举返回单例类对象。

​		3.确保单例类的对象有且只有一个，尤其是在多线程环境下。

​		4.确保单例类对象在反序列化时不会重新构建对象。

#### 3.各种实现方式的优缺点

​		懒汉单例模式的优点是单例只有在使用时才会被实例化，在一定程度上节约了资源；缺点是第一次加载时需要及时进行实例化，反应稍慢，最大的问题是每次调用getInstance都进行同步，造成不必要的同步开销。这种模式一般不建议使用。

```java
public class LazySingleton {
    private static LazySingleton instance;
    private LazySingleton(){}
    public static synchronized LazySingleton getInstance(){
        if(instance == null)
            instance = new LazySingleton();
        return instance;
    }
}
```

Double Check Lock（DCL）实现单例。JDK1.5以后只需要使用volatile关键字就可以保证sInstance对象每次都是从主内存中读取。DCL虽然在一定程度上解决了资源消耗、多余的同步、线程安全等问题，但是它还是在某些情况下出现失效的问题。(sInstance = new DCLSingleton();是一行代码，但实际上不是一个原子操作，这句代码最终会被编译成多条汇编指令，由于Java编译器允许处理器乱序执行，以及JDK1.5之前JMM中Cache、寄存器到主内存回写顺序的规定，上面的第二第三条指令的顺序是无法保证的。)这个问题被称为双重检查锁定（DCL）失效。DCL的优点：资源利用率高，第一次执行getInstance时单例对象才会被实例化，效率高。缺点：第一次加载时反应稍慢，也由于Java内存模型的原因偶尔会失败。在高并发环境下也有一定的缺陷，虽然发生概率很小。

```java
public class DCLSingleton {
    private static DCLSingleton sInstance = null;
    private DCLSingleton(){}
    public void doSomething(){
        System.out.println("do sth");
    }
    public static synchronized DCLSingleton getInstance(){
        if(sInstance == null){
            synchronized(DCLSingleton.class){
                if(sInstance == null){
                    sInstance = new DCLSingleton();
                }
            }
        }
        return sInstance;
    }
}
```

因此建议使用静态内部类单例模式。

```java
public class Singleton{
	private Singleton(){}
  public static Singleton getInstance(){
    return SingletonHolder.sInstance;
  }
  private static class SingletonHolder{
    private static final Singleton sInstance = new Singleton();
  }
}
```

枚举单例

```java
public enum  EnumSingleton {
    INSTANCE;
    public void doSomething(){
        System.out.println("do sth");
    }
}
```

容器实现单例

```java
public class ContainerSingletonManager {
    private static Map<String,Object> objMap = new HashMap<>();
    
    private ContainerSingletonManager(){}
    public static void registerService(String key,Object instance){
        if(!objMap.containsKey(key))
            objMap.put(key,instance);
    }
    
    public static Object getService(String key){
        return objMap.get(key);
    }
}
```

以上单例模式实现方式在通过序列化可以将一个单例的实例对象写到磁盘，然后再读回来，从而有效地获得一个实例。即使构造函数是私有的，反序列化时依然可以通过特殊途径去创建类的一个新的实例，相当于调用该类的构造函数。使用枚举单例，可以避免这个问题。如果要杜绝单例对象在被反序列化时重新生成对象，那么必须加入readResolve函数。

#### 4.总结

​		单例模式是运用频率很高的模式，但是，由于在客户端通常没有高并发的情况，因此选择哪种实现方式并不会有太大的影响。

​		优点：

​		1.由于单例模式在内存中只有一个实例，减少了内存开支，特别是一个对象需要频繁地创建、销毁时，而且创建或销毁时性能又无法优化，单例模式的优势就非常明显。

​		2.由于单例模式只生成一个实例，所以，减少了系统的性能开销，当一个对象的产生需要比较多的资源时，如读取配置、产生其他依赖对象时，则可以通过在应用启动时，直接产生一个单例对象，然后用永久驻留内存的方式来解决。

​		3.单例模式可以避免对资源的多重占用，例如一个写文件操作，由于只有一个实例存在内存中，避免对同一个资源文件的同时写操作。

​		4.单例模式可以在系统设置全局的访问点，优化和共享资源访问，例如设计一个单例类，负责所有数据表的映射处理。

​		缺点：

​		1.单例模式一般没有接口，扩展困难，若要扩展，除了修改代码基本上没有第二种途径可以实现。

​		2.单例对象如果持有Context，那么很容易引发内存泄漏，此时需要注意传递给单例对象的Context，最好是Application Context。

​	