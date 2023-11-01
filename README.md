# Creating a Swift Framework - Example Project

This repository is a part of the "Creating a Swift Framework" article.

## What are Swift Frameworks?

In the world of Swift, a framework is like a toolbox on steroids for building awesome apps. It's a cool collection of code and goodies that you can use and reuse to make your life as a developer way easier.

So, what's a Swift framework, you ask? Well, it's like this organized, modular, and encapsulated chunk of code and other stuff, like images or text, that you can drop into your projects.

Here's why they're super cool:

1. **Modularity:** Think of it as LEGO for your code. You can break your project into smaller, manageable pieces, making everything tidy and efficient.
2. **Encapsulation:** Frameworks are like superheroes hiding their secret identities. They only show you what you need, keeping the messy stuff behind the scenes.
3. **Code Reusability:** Ever wanted to reuse a piece of code in multiple projects? With frameworks, it's as easy as borrowing your buddy's jacket for the weekend. No more copy-pasting!
4. **Dependency Magic:** Frameworks can rely on other frameworks. It's like calling in your friends for help when things get tough. You don't have to reinvent the wheel.
5. **Sharing Is Caring:** You can share frameworks with other developers or your coding squad. It's like sharing your favorite playlist, but for code.
6. **Apple-Friendly:** These bad boys work across Apple's playgrounds: iOS, macOS, watchOS, and tvOS. So you can build cool stuff everywhere.

So there you have it – Swift frameworks, making coding life more fun, efficient, and social, no matter which Apple platform you're rocking.

## Running this project

Clone this project into your local machine and open the `BoredFramework.xcworkspace`` to view the full project source code.

In order to compile the Framework and make it ready for deployment, run the following commands at the project's root:

```shell
chmod 755 build_framework.sh
./build_framework.sh
```

This will create an `output` folder with the `BoredFramework.xcframework` that can be delivered and integrated in other Xcode projects.