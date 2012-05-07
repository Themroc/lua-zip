rockspec_format= "1.0"
package= "brimworks-zip"
version= "1.0-1"
source= {
  url= "http://69b.org/web69/dl/brimworks-zip-1.0.tar.bz2",
  md5= "@MD5@",
  dir= "brimworks-zip-1.0",
}
description= {
  summary= "Lua interface to libzip",
  detailed= [[
To use this library, you need libzip, get it here:
     http://www.nih.at/libzip/

Note:
    There is not a "streaming" interface supplied by this library.  If
    you want to work with zip files as streams, please see
    lua-archive.  However, libarchive is currently not compatible with
    "office open xml", and therefore the author was motivated to write
    this zip specific binding.
]],
  homepage= "http://69b.org/cms/software/rocks/#brimworks-zip",
  license= "MIT/X11",
}
dependencies= {
  "lua >= 5.1",
}
external_dependencies = {
  ZIP= {
    header= "zip.h",
    library= "zip",
  },
}
build= {
  type= "builtin",
  modules= {
    ["brimworks_zip"]= {
      sources= { "lua_zip.c" },
      libraries= { "zip" },
      incdirs= { "$(ZIP_INCDIR)" },
      libdirs= { "$(ZIP_LIBDIR)" }
    },
  },
  copy_directories= { "doc", },
}
