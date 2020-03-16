{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE TemplateHaskell #-}

module FreeType.Lens where

import           FreeType
import           FreeType.Internal
import           FreeType.Lens.Internal



-- FreeType.Cache

makeFieldsFT ''FTC_ScalerRec

makeFieldsFT ''FTC_ImageTypeRec

makeFieldsFT ''FTC_SBitRec



-- FreeType.Control.Driver.Types

makeFieldsFT ''FT_Prop_GlyphToScriptMap

makeFieldsFT ''FT_Prop_IncreaseXHeight



-- FreeType.Core.Base

makeFieldsFT ''FT_FaceRec

makeFieldsFT ''FT_SizeRec

makeFieldsFT ''FT_Size_Metrics

makeFieldsFT ''FT_GlyphSlotRec

makeFieldsFT ''FT_Glyph_Metrics

makeFieldsFT ''FT_Open_Args

makeFieldsFT ''FT_Bitmap_Size

makeFieldsFT' ''FT_Parameter
  $ \val -> case val of
              "data" -> "data_"
              _      -> val

makeFieldsFT' ''FT_Size_RequestRec
  $ \val -> case val of
              "type" -> "type_"
              _      -> val

makeFieldsFT ''FT_CharMapRec



-- FreeType.Core.Color

makeFieldsFT ''FT_Color

makeFieldsFT ''FT_Palette_Data



-- FreeType.Core.Glyph

makeFieldsFT ''FT_GlyphRec

makeFieldsFT ''FT_BitmapGlyphRec

makeFieldsFT ''FT_OutlineGlyphRec



-- FreeType.Core.Layer

makeFieldsFT ''FT_LayerIterator



-- FreeType.Core.Types

makeFieldsFT ''FT_Vector

makeFieldsFT ''FT_BBox

makeFieldsFT ''FT_Matrix

makeFieldsFT ''FT_UnitVector

makeFieldsFT' ''FT_Data
  $ \val -> case val of
              "length" -> "length_"
              _        -> val

makeFieldsFT' ''FT_Generic
  $ \val -> case val of
              "data" -> "data_"
              _      -> val

makeFieldsFT ''FT_Bitmap



-- FreeType.Format.BDF

makeFieldsFT' ''BDF_PropertyRec
  $ \val -> case val of
              "type" -> "type_"
              _      -> val



-- FreeType.Format.Multiple

makeFieldsFT' ''FT_MM_Axis
  $ \val -> case val of
              "minimum" -> "minimum_"
              "maximum" -> "maximum_"
              _         -> val

makeFieldsFT ''FT_Multi_Master

makeFieldsFT' ''FT_Var_Axis
  $ \val -> case val of
              "minimum" -> "minimum_"
              "maximum" -> "maximum_"
              _         -> val

makeFieldsFT ''FT_Var_Named_Style

makeFieldsFT ''FT_MM_Var



-- FreeType.Format.SFNT

makeFieldsFT ''FT_SfntName

makeFieldsFT ''FT_SfntLangTag



-- FreeType.Format.TrueType

makeFieldsFT ''TT_Header

makeFieldsFT ''TT_HoriHeader

makeFieldsFT ''TT_VertHeader

makeFieldsFT ''TT_OS2

makeFieldsFT ''TT_Postscript

makeFieldsFT ''TT_PCLT

makeFieldsFT ''TT_MaxProfile



-- FreeType.Format.Type1

makeFieldsFT ''PS_FontInfoRec

makeFieldsFT ''PS_PrivateRec

makeFieldsFT ''CID_FaceDictRec

makeFieldsFT ''CID_FaceInfoRec



-- FreeType.Format.WinFNT

makeFieldsFT ''FT_WinFNT_HeaderRec



-- FreeType.Miscellaneous.Incremental

makeFieldsFT ''FT_Incremental_MetricsRec

makeFieldsFT ''FT_Incremental_FuncsRec

makeFieldsFT ''FT_Incremental_InterfaceRec



-- FreeType.Support.List

makeFieldsFT' ''FT_ListNodeRec
  $ \val -> case val of
              "data" -> "data_"
              _      -> val

makeFieldsFT ''FT_ListRec



-- FreeType.Support.Module

makeFieldsFT ''FT_Module_Class

makeFieldsFT ''FT_Renderer_Class



-- FreeType.Support.Outline

makeFieldsFT ''FT_Outline

makeFieldsFT ''FT_Outline_Funcs



-- FreeType.Support.Outline.Internal

makeFieldsFT ''FT_Outline_Funcs'



-- FreeType.Support.Scanline

makeFieldsFT ''FT_Span

makeFieldsFT ''FT_Raster_Params

makeFieldsFT ''FT_Raster_Funcs



-- FreeType.Support.System

makeFieldsFT ''FT_MemoryRec

makeFieldsFT ''FT_StreamDesc

makeFieldsFT ''FT_StreamRec
