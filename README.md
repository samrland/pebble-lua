# pebble

A fake OS written in Lua.

## what is pebble

Pebble is a fake operating system that can run apps created by the community.

## how to install apps

You may download an app from the Get Apps feature.
The Get Apps feature is powered by the samrcode/pebble-app repository on GitHub.

After you download the app, edit the variables at the top of apps.lua to contain the filenames of the apps you would like to use.

## how to make apps

Pebble apps are written in Lua. There is also a built-in app that adds support for Python.

### lua

Apps written in Lua are the default for Pebble.

Just write Lua code, and it will run! The only thing you have to do is put the `home` function in the `pebble` module at the end of your code. More about the Lua module later.

NOTE: File locations don't exactly work as expected. It will load from the top directory where boot.lua is loaded. This means that to open a script for your app you will manually have to type `lua public/scripts/` instead of just `lua ../scripts/`.

### python

Python apps aren't the default in Pebble. They have to be loaded using a different app named pySupport.

Just write Python code, and it will run! The only thing you have to do is add `os.system("lua public/scripts/open.lua")` at the end of your code.

### lua module

Pebble has a special module to make Pebble apps easier. The module is named `pebble`. You can import by using `require "pebble"`. Here are a few functions included.

#### home

This function is used to jump straight back home. It will close the app, and open pebble home. An alternative is to use `page`.

No parameters.

#### page

This function can be used to jump to a specific page of Pebble. Here are all the possible pages: 

- home
- help
- settings
- power
- apps
- getapp
- latest

Parameters: `page`. The `page` parameter is a string using one of the possible pages listed above.

#### list

This function can be used to make a Pebble styled list. This can be used to make your app feel more like a built-in Pebble app.

Parameters: `num`, `ent` 1 ~ 10. `num` is an integer used to specify the number of entries. The `ent` string parameters are entries. These are the names of the entries.

NOTE: You will have to handle the input and `if` statements in your own code.
