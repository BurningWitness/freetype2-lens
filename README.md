# freetype2-lens

Lens support for the [FreeType2](https://hackage.haskell.org/package/freetype2-0.2.0) package.

Originally intended as a solution to the pain of extracting specific fields, it never
solved the core issue of having to `peek` the entire structure the field is a part of and thus never saw use.
The correct solution to the problem is the [storable-offset](https://hackage.haskell.org/package/storable-offset) package.
